import 'package:faker/faker.dart';

contextNameGenerator() {
  return Faker().food.dish().replaceAll(RegExp(r'[\W_]+'), '_').toLowerCase();
}
