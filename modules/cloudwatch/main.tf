resource "aws_cloudwatch_metric_alarm" "EB_API_ENV_HEALTH_SEVERE" {
  alarm_name                = "ElasticBeanstalk - ${var.app_tags} - Api - Severe"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = "1"
  metric_name               = "EnvironmentHealth"
  namespace                 = "AWS/ElasticBeanstalk"
  period                    = "300"
  statistic                 = "Average"
  threshold                 = "25"
  alarm_description         = "Environment health is severe"
  alarm_actions             = [var.alarm_sns_topic]
  dimensions = {
        EnvironmentName = var.envName
      }
  tags = {
    APP_NAME = var.app_tags
  }
}

resource "aws_cloudwatch_metric_alarm" "EB_API_ENV_HEALTH_WARNING" {
  alarm_name                = "ElasticBeanstalk - ${var.app_tags} - Api - Warning"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = "1"
  metric_name               = "EnvironmentHealth"
  namespace                 = "AWS/ElasticBeanstalk"
  period                    = "900"
  statistic                 = "Average"
  threshold                 = "15"
  alarm_description         = "Environment health is warning"
  alarm_actions             = [var.alarm_sns_topic]
  dimensions = {
        EnvironmentName = var.envName
      }
  tags = {
    APP_NAME = var.app_tags
  }
}

