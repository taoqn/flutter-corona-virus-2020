import 'package:corona_tracker/models/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Models Location test", () {
    test("toJson method", () {
      var timeLine = TimeLine(latest: 0, timeline: {
        "2020-01-22T00:00:00Z": 0,
        "2020-01-23T00:00:00Z": 0,
        "2020-01-24T00:00:00Z": 0,
      });

      var timeLines = TimeLines(
        recovered: timeLine,
        deaths: timeLine,
        confirmed: timeLine,
      );

      var location = Location(
          id: 0,
          country: "",
          countryCode: "",
          countryPopulation: 0,
          county: "",
          lastUpdated: "",
          province: "",
          latest: Latest(
            confirmed: 0,
            deaths: 0,
            recovered: 0,
          ),
          coordinates: Coordinates(
            longitude: "10",
            latitude: "10",
          ),
          timeLines: timeLines);

      expect(location.toJson(), {
        "id": 0,
        "country": "",
        "country_code": "",
        "country_population": 0,
        "county": "",
        "last_updated": "",
        "province": "",
        "latest": {
          "confirmed": 0,
          "deaths": 0,
          "recovered": 0,
        },
        "coordinates": {
          "longitude": "10",
          "latitude": "10",
        },
        "timelines": {
          "recovered": {
            "latest": 0,
            "timeline": {
              "2020-01-22T00:00:00Z": 0,
              "2020-01-23T00:00:00Z": 0,
              "2020-01-24T00:00:00Z": 0,
            }
          },
          "deaths": {
            "latest": 0,
            "timeline": {
              "2020-01-22T00:00:00Z": 0,
              "2020-01-23T00:00:00Z": 0,
              "2020-01-24T00:00:00Z": 0,
            }
          },
          "confirmed": {
            "latest": 0,
            "timeline": {
              "2020-01-22T00:00:00Z": 0,
              "2020-01-23T00:00:00Z": 0,
              "2020-01-24T00:00:00Z": 0,
            }
          },
        }
      });
    });

    test("fromJson method", () {
      var timeLines = TimeLines(
          confirmed: TimeLine(latest: 114, timeline: {
            "2020-01-22T00:00:00Z": 0,
            "2020-01-23T00:00:00Z": 0,
            "2020-01-24T00:00:00Z": 0,
            "2020-01-25T00:00:00Z": 0,
            "2020-01-26T00:00:00Z": 0,
            "2020-01-27T00:00:00Z": 0,
            "2020-01-28T00:00:00Z": 0,
            "2020-01-29T00:00:00Z": 0,
            "2020-01-30T00:00:00Z": 0,
            "2020-01-31T00:00:00Z": 0,
            "2020-02-01T00:00:00Z": 0,
            "2020-02-02T00:00:00Z": 0,
            "2020-02-03T00:00:00Z": 0,
            "2020-02-04T00:00:00Z": 0,
            "2020-02-05T00:00:00Z": 0,
            "2020-02-06T00:00:00Z": 0,
            "2020-02-07T00:00:00Z": 0,
            "2020-02-08T00:00:00Z": 0,
            "2020-02-09T00:00:00Z": 0,
            "2020-02-10T00:00:00Z": 0,
            "2020-02-11T00:00:00Z": 0,
            "2020-02-12T00:00:00Z": 0,
            "2020-02-13T00:00:00Z": 0,
            "2020-02-14T00:00:00Z": 0,
            "2020-02-15T00:00:00Z": 0,
            "2020-02-16T00:00:00Z": 0,
            "2020-02-17T00:00:00Z": 0,
            "2020-02-18T00:00:00Z": 0,
            "2020-02-19T00:00:00Z": 0,
            "2020-02-20T00:00:00Z": 0,
            "2020-02-21T00:00:00Z": 0,
            "2020-02-22T00:00:00Z": 0,
            "2020-02-23T00:00:00Z": 0,
            "2020-02-24T00:00:00Z": 0,
            "2020-02-25T00:00:00Z": 0,
            "2020-02-26T00:00:00Z": 0,
            "2020-02-27T00:00:00Z": 0,
            "2020-02-28T00:00:00Z": 0,
            "2020-02-29T00:00:00Z": 0,
            "2020-03-01T00:00:00Z": 0,
            "2020-03-02T00:00:00Z": 0,
            "2020-03-03T00:00:00Z": 0,
            "2020-03-04T00:00:00Z": 0,
            "2020-03-05T00:00:00Z": 0,
            "2020-03-06T00:00:00Z": 0,
            "2020-03-07T00:00:00Z": 0,
            "2020-03-08T00:00:00Z": 0,
            "2020-03-09T00:00:00Z": 1,
            "2020-03-10T00:00:00Z": 1,
            "2020-03-11T00:00:00Z": 11,
            "2020-03-12T00:00:00Z": 11,
            "2020-03-13T00:00:00Z": 37,
            "2020-03-14T00:00:00Z": 40,
            "2020-03-15T00:00:00Z": 50,
            "2020-03-16T00:00:00Z": 54,
            "2020-03-17T00:00:00Z": 56,
            "2020-03-18T00:00:00Z": 68,
            "2020-03-19T00:00:00Z": 75,
            "2020-03-20T00:00:00Z": 78,
            "2020-03-21T00:00:00Z": 83,
            "2020-03-22T00:00:00Z": 88,
            "2020-03-23T00:00:00Z": 91,
            "2020-03-24T00:00:00Z": 104,
            "2020-03-25T00:00:00Z": 109,
            "2020-03-26T00:00:00Z": 114
          }),
          deaths: TimeLine(latest: 0, timeline: {
            "2020-01-22T00:00:00Z": 0,
            "2020-01-23T00:00:00Z": 0,
            "2020-01-24T00:00:00Z": 0,
            "2020-01-25T00:00:00Z": 0,
            "2020-01-26T00:00:00Z": 0,
            "2020-01-27T00:00:00Z": 0,
            "2020-01-28T00:00:00Z": 0,
            "2020-01-29T00:00:00Z": 0,
            "2020-01-30T00:00:00Z": 0,
            "2020-01-31T00:00:00Z": 0,
            "2020-02-01T00:00:00Z": 0,
            "2020-02-02T00:00:00Z": 0,
            "2020-02-03T00:00:00Z": 0,
            "2020-02-04T00:00:00Z": 0,
            "2020-02-05T00:00:00Z": 0,
            "2020-02-06T00:00:00Z": 0,
            "2020-02-07T00:00:00Z": 0,
            "2020-02-08T00:00:00Z": 0,
            "2020-02-09T00:00:00Z": 0,
            "2020-02-10T00:00:00Z": 0,
            "2020-02-11T00:00:00Z": 0,
            "2020-02-12T00:00:00Z": 0,
            "2020-02-13T00:00:00Z": 0,
            "2020-02-14T00:00:00Z": 0,
            "2020-02-15T00:00:00Z": 0,
            "2020-02-16T00:00:00Z": 0,
            "2020-02-17T00:00:00Z": 0,
            "2020-02-18T00:00:00Z": 0,
            "2020-02-19T00:00:00Z": 0,
            "2020-02-20T00:00:00Z": 0,
            "2020-02-21T00:00:00Z": 0,
            "2020-02-22T00:00:00Z": 0,
            "2020-02-23T00:00:00Z": 0,
            "2020-02-24T00:00:00Z": 0,
            "2020-02-25T00:00:00Z": 0,
            "2020-02-26T00:00:00Z": 0,
            "2020-02-27T00:00:00Z": 0,
            "2020-02-28T00:00:00Z": 0,
            "2020-02-29T00:00:00Z": 0,
            "2020-03-01T00:00:00Z": 0,
            "2020-03-02T00:00:00Z": 0,
            "2020-03-03T00:00:00Z": 0,
            "2020-03-04T00:00:00Z": 0,
            "2020-03-05T00:00:00Z": 0,
            "2020-03-06T00:00:00Z": 0,
            "2020-03-07T00:00:00Z": 0,
            "2020-03-08T00:00:00Z": 0,
            "2020-03-09T00:00:00Z": 0,
            "2020-03-10T00:00:00Z": 0,
            "2020-03-11T00:00:00Z": 0,
            "2020-03-12T00:00:00Z": 0,
            "2020-03-13T00:00:00Z": 0,
            "2020-03-14T00:00:00Z": 0,
            "2020-03-15T00:00:00Z": 0,
            "2020-03-16T00:00:00Z": 0,
            "2020-03-17T00:00:00Z": 0,
            "2020-03-18T00:00:00Z": 0,
            "2020-03-19T00:00:00Z": 0,
            "2020-03-20T00:00:00Z": 0,
            "2020-03-21T00:00:00Z": 0,
            "2020-03-22T00:00:00Z": 0,
            "2020-03-23T00:00:00Z": 0,
            "2020-03-24T00:00:00Z": 0,
            "2020-03-25T00:00:00Z": 0,
            "2020-03-26T00:00:00Z": 0
          }),
          recovered: TimeLine(
            latest: 0,
            timeline: {},
          ));

      var location = Location(
        id: 29,
        country: "Brunei",
        countryCode: "BN",
        countryPopulation: 395027,
        province: "",
        county: "",
        lastUpdated: "2020-03-27T14:45:39.623707Z",
        coordinates: Coordinates(
          latitude: "4.5353",
          longitude: "114.7277",
        ),
        latest: Latest(
          confirmed: 114,
          deaths: 0,
          recovered: 0,
        ),
        timeLines: timeLines,
      );

      var json ={
        "id": 29,
        "country": "Brunei",
        "country_code": "BN",
        "country_population": 395027,
        "province": "",
        "county": "",
        "last_updated": "2020-03-27T14:45:39.623707Z",
        "coordinates": {"latitude": "4.5353", "longitude": "114.7277"},
        "latest": {"confirmed": 114, "deaths": 0, "recovered": 0},
        "timelines": {
          "confirmed": {
            "latest": 114,
            "timeline": {
              "2020-01-22T00:00:00Z": 0,
              "2020-01-23T00:00:00Z": 0,
              "2020-01-24T00:00:00Z": 0,
              "2020-01-25T00:00:00Z": 0,
              "2020-01-26T00:00:00Z": 0,
              "2020-01-27T00:00:00Z": 0,
              "2020-01-28T00:00:00Z": 0,
              "2020-01-29T00:00:00Z": 0,
              "2020-01-30T00:00:00Z": 0,
              "2020-01-31T00:00:00Z": 0,
              "2020-02-01T00:00:00Z": 0,
              "2020-02-02T00:00:00Z": 0,
              "2020-02-03T00:00:00Z": 0,
              "2020-02-04T00:00:00Z": 0,
              "2020-02-05T00:00:00Z": 0,
              "2020-02-06T00:00:00Z": 0,
              "2020-02-07T00:00:00Z": 0,
              "2020-02-08T00:00:00Z": 0,
              "2020-02-09T00:00:00Z": 0,
              "2020-02-10T00:00:00Z": 0,
              "2020-02-11T00:00:00Z": 0,
              "2020-02-12T00:00:00Z": 0,
              "2020-02-13T00:00:00Z": 0,
              "2020-02-14T00:00:00Z": 0,
              "2020-02-15T00:00:00Z": 0,
              "2020-02-16T00:00:00Z": 0,
              "2020-02-17T00:00:00Z": 0,
              "2020-02-18T00:00:00Z": 0,
              "2020-02-19T00:00:00Z": 0,
              "2020-02-20T00:00:00Z": 0,
              "2020-02-21T00:00:00Z": 0,
              "2020-02-22T00:00:00Z": 0,
              "2020-02-23T00:00:00Z": 0,
              "2020-02-24T00:00:00Z": 0,
              "2020-02-25T00:00:00Z": 0,
              "2020-02-26T00:00:00Z": 0,
              "2020-02-27T00:00:00Z": 0,
              "2020-02-28T00:00:00Z": 0,
              "2020-02-29T00:00:00Z": 0,
              "2020-03-01T00:00:00Z": 0,
              "2020-03-02T00:00:00Z": 0,
              "2020-03-03T00:00:00Z": 0,
              "2020-03-04T00:00:00Z": 0,
              "2020-03-05T00:00:00Z": 0,
              "2020-03-06T00:00:00Z": 0,
              "2020-03-07T00:00:00Z": 0,
              "2020-03-08T00:00:00Z": 0,
              "2020-03-09T00:00:00Z": 1,
              "2020-03-10T00:00:00Z": 1,
              "2020-03-11T00:00:00Z": 11,
              "2020-03-12T00:00:00Z": 11,
              "2020-03-13T00:00:00Z": 37,
              "2020-03-14T00:00:00Z": 40,
              "2020-03-15T00:00:00Z": 50,
              "2020-03-16T00:00:00Z": 54,
              "2020-03-17T00:00:00Z": 56,
              "2020-03-18T00:00:00Z": 68,
              "2020-03-19T00:00:00Z": 75,
              "2020-03-20T00:00:00Z": 78,
              "2020-03-21T00:00:00Z": 83,
              "2020-03-22T00:00:00Z": 88,
              "2020-03-23T00:00:00Z": 91,
              "2020-03-24T00:00:00Z": 104,
              "2020-03-25T00:00:00Z": 109,
              "2020-03-26T00:00:00Z": 114
            }
          },
          "deaths": {
            "latest": 0,
            "timeline": {
              "2020-01-22T00:00:00Z": 0,
              "2020-01-23T00:00:00Z": 0,
              "2020-01-24T00:00:00Z": 0,
              "2020-01-25T00:00:00Z": 0,
              "2020-01-26T00:00:00Z": 0,
              "2020-01-27T00:00:00Z": 0,
              "2020-01-28T00:00:00Z": 0,
              "2020-01-29T00:00:00Z": 0,
              "2020-01-30T00:00:00Z": 0,
              "2020-01-31T00:00:00Z": 0,
              "2020-02-01T00:00:00Z": 0,
              "2020-02-02T00:00:00Z": 0,
              "2020-02-03T00:00:00Z": 0,
              "2020-02-04T00:00:00Z": 0,
              "2020-02-05T00:00:00Z": 0,
              "2020-02-06T00:00:00Z": 0,
              "2020-02-07T00:00:00Z": 0,
              "2020-02-08T00:00:00Z": 0,
              "2020-02-09T00:00:00Z": 0,
              "2020-02-10T00:00:00Z": 0,
              "2020-02-11T00:00:00Z": 0,
              "2020-02-12T00:00:00Z": 0,
              "2020-02-13T00:00:00Z": 0,
              "2020-02-14T00:00:00Z": 0,
              "2020-02-15T00:00:00Z": 0,
              "2020-02-16T00:00:00Z": 0,
              "2020-02-17T00:00:00Z": 0,
              "2020-02-18T00:00:00Z": 0,
              "2020-02-19T00:00:00Z": 0,
              "2020-02-20T00:00:00Z": 0,
              "2020-02-21T00:00:00Z": 0,
              "2020-02-22T00:00:00Z": 0,
              "2020-02-23T00:00:00Z": 0,
              "2020-02-24T00:00:00Z": 0,
              "2020-02-25T00:00:00Z": 0,
              "2020-02-26T00:00:00Z": 0,
              "2020-02-27T00:00:00Z": 0,
              "2020-02-28T00:00:00Z": 0,
              "2020-02-29T00:00:00Z": 0,
              "2020-03-01T00:00:00Z": 0,
              "2020-03-02T00:00:00Z": 0,
              "2020-03-03T00:00:00Z": 0,
              "2020-03-04T00:00:00Z": 0,
              "2020-03-05T00:00:00Z": 0,
              "2020-03-06T00:00:00Z": 0,
              "2020-03-07T00:00:00Z": 0,
              "2020-03-08T00:00:00Z": 0,
              "2020-03-09T00:00:00Z": 0,
              "2020-03-10T00:00:00Z": 0,
              "2020-03-11T00:00:00Z": 0,
              "2020-03-12T00:00:00Z": 0,
              "2020-03-13T00:00:00Z": 0,
              "2020-03-14T00:00:00Z": 0,
              "2020-03-15T00:00:00Z": 0,
              "2020-03-16T00:00:00Z": 0,
              "2020-03-17T00:00:00Z": 0,
              "2020-03-18T00:00:00Z": 0,
              "2020-03-19T00:00:00Z": 0,
              "2020-03-20T00:00:00Z": 0,
              "2020-03-21T00:00:00Z": 0,
              "2020-03-22T00:00:00Z": 0,
              "2020-03-23T00:00:00Z": 0,
              "2020-03-24T00:00:00Z": 0,
              "2020-03-25T00:00:00Z": 0,
              "2020-03-26T00:00:00Z": 0
            }
          },
          "recovered": {
            "latest": 0,
            "timeline": {},
          }
        }
      };

      expect(Location.fromJson(json).toJson(), location.toJson());
    });
  });
}
