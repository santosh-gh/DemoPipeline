using System;
using Microsoft.Extensions.Logging;
using Moq;
using DemoAPI.Controllers;

namespace DemoAPI.Test
{
    public class WeatherForecastControllerTestFixture : IDisposable
    {
        public WeatherForecastController Sut { get; private set; }

        public WeatherForecastControllerTestFixture()
        {
            var mockedLogger = new Mock<ILogger<WeatherForecastController>>();

            Sut = new WeatherForecastController(mockedLogger.Object);
        }

        public void Dispose()
        {
            //throw new NotImplementedException();
        }
    }
}
