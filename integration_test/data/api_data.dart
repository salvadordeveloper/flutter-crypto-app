class ApiData {
  static final Map<String, dynamic> exchanges = {
    "result": [
      {
        "id": 17,
        "symbol": "mexbt",
        "name": "meXBT",
        "route": "https://api.cryptowat.ch/exchanges/mexbt",
        "active": false
      },
      {
        "id": 62,
        "symbol": "coinone",
        "name": "Coinone",
        "route": "https://api.cryptowat.ch/exchanges/coinone",
        "active": true
      },
    ],
    "allowance": {"cost": 0, "remaining": 100, "upgrade": ""}
  };

  static final Map<String, dynamic> pairs = {
    "result": [
      {
        "id": 579,
        "exchange": "binance",
        "pair": "btcusdt",
        "active": true,
        "route": "https://api.cryptowat.ch/markets/binance/btcusdt"
      },
      {
        "id": 580,
        "exchange": "binance",
        "pair": "ethbtc",
        "active": true,
        "route": "https://api.cryptowat.ch/markets/binance/ethbtc"
      },
      {
        "id": 581,
        "exchange": "binance",
        "pair": "ltcbtc",
        "active": true,
        "route": "https://api.cryptowat.ch/markets/binance/ltcbtc"
      },
      {
        "id": 582,
        "exchange": "binance",
        "pair": "neobtc",
        "active": true,
        "route": "https://api.cryptowat.ch/markets/binance/neobtc"
      },
    ],
    "allowance": {"cost": 0, "remaining": 100, "upgrade": ""}
  };

  static final Map<String, dynamic> pair_btcusdt_summary = {
    "result": {
      "price": {
        "last": 35503.33,
        "high": 43861.94,
        "low": 30000,
        "change": {"percentage": -0.18764266402587584, "absolute": -8200.75}
      },
      "volume": 257132.87322650044,
      "volumeQuote": 10096197214.14349
    },
    "allowance": {"cost": 0, "remaining": 100, "upgrade": ""}
  };

  static final Map<String, dynamic> pair_btcusdt_oderbook = {
    "result": {
      "asks": [
        [35922.59, 0.004088],
        [35925.23, 0.003071],
        [35925.71, 0.012824],
        [35927.12, 0.000556],
        [35927.58, 0.2178],
      ],
      "bids": [
        [35904.23, 0.153095],
        [35900.35, 0.082238],
        [35898, 0.12],
        [35897.99, 0.006152],
        [35897.68, 0.04332],
      ],
      "seqNum": 429614
    },
    "allowance": {"cost": 0, "remaining": 100, "upgrade": ""}
  };

  static final Map<String, dynamic> pair_btcusdt_trades = {
    "result": [
      [0, 1621433110, 34452.66, 0.008464],
      [0, 1621433110, 34454.43, 0.016662],
      [0, 1621433110, 34485.69, 0.00476],
      [0, 1621433110, 34475.97, 0.000401],
      [0, 1621433110, 34456.09, 0.0011],
      [0, 1621433110, 34456.09, 0.004997],
    ],
    "allowance": {"cost": 0, "remaining": 100, "upgrade": ""}
  };

  static final Map<String, dynamic> pair_btcusdt_graph = {
    "result": {
      "14400": [
        [
          1607054400,
          19422.34,
          19527,
          19122.74,
          19162.62,
          8683.588417,
          167917416.81467284
        ],
        [
          1607097600,
          18835.47,
          19146.22,
          18686.38,
          18943.35,
          14717.586675,
          278732315.17076141
        ],
        [
          1607112000,
          18944.06,
          19078.68,
          18817,
          19038.73,
          8799.851665,
          166925728.42698553
        ],
      ]
    },
    "allowance": {"cost": 0, "remaining": 100, "upgrade": ""}
  };
}
