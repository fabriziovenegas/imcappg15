class ImcModel {
  String title;
  String recomendation;
  String pathImage;
  ImcModel(this.title, this.recomendation, this.pathImage);
}

List<ImcModel> imcModelList = [
  ImcModel(
    "Bajo Peso",
    "Se debe alimentar con los nutrientes necesarios",
    "delgadez",
  ),
  ImcModel(
    "Normal",
    "El IMC es normal, mantén tu dieta balanceada y toma bastante agua",
    "normal",
  ),
  ImcModel(
    "Sobrepeso",
    "Hacer ejercicio, deporte y comer saludable",
    "sobrepeso",
  ),
  ImcModel(
    "Obesidad",
    "Realizar una dieta muy estricta y comenzar a hacer ejercicio",
    "obesidad",
  ),
];
