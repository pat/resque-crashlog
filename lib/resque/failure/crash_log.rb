class Resque::Failure::CrashLog < Resque::Failure::Base
  def self.count
    # No information on this from CrashLog, so we're stealing the approach
    # Airbrake has taken, and just using Resque's own stats.
    Stat[:failed]
  end

  def save
    CrashLog.notify_or_ignore(exception, :context => crash_log_context)
  end

  private

  def crash_log_context
    {
      :queue     => queue.to_s,
      :job       => payload['class'].to_s,
      :arguments => payload['args']
    }
  end
end
