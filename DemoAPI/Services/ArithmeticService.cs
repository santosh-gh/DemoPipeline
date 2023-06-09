﻿using DemoAPI.Repositories;

namespace DemoAPI.Services
{
    public class ArithmeticService : IArithmeticService
    {
        private readonly IArithmeticRepository _repository;

        public ArithmeticService(IArithmeticRepository repository)
        {
            _repository = repository;
        }

        public int Add(int x, int y) => x + y;
    }
}
