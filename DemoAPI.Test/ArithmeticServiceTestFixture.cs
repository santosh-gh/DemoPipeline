using Moq;
using System;
using DemoAPI.Repositories;
using DemoAPI.Services;

namespace DemoAPI.Test
{
    public class ArithmeticServiceTestFixture : IDisposable
    {
        public ArithmeticService Sut { get; private set; }

        public ArithmeticServiceTestFixture()
        {
            var mockedRepository = new Mock<IArithmeticRepository>();

            Sut = new ArithmeticService(mockedRepository.Object);
        }

        public void Dispose()
        {
            //throw new NotImplementedException();
        }
    }
}
