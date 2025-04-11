class SignUpFormModel {
  final String? name;
  final String? email;
  final String? password;
  final String? profilePicture;
  final String? ktp;
  final String? pin;

  SignUpFormModel({
    this.name,
    this.email,
    this.password,
    this.profilePicture,
    this.ktp,
    this.pin,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'profilePicture': profilePicture,
      'ktp': ktp,
      'pin': pin,
    };
  }

  SignUpFormModel copyWith({
    String? profilePicture,
    String? ktp,
    String? pin,
  }) =>
      SignUpFormModel(
          name: name,
          email: email,
          password: password,
          profilePicture: profilePicture ?? this.profilePicture,
          pin: pin ?? this.pin,
          ktp: ktp ?? this.ktp);
}
