import 'dart:convert';

class BannerApp {

String Descricao;
bool Ativo;
String Noticia;
String UrlLink;
String DataAlteracao;
String UrlImagem;
String id;

  BannerApp({
    this.Descricao,
    this.Ativo,
    this.Noticia,
    this.UrlLink,
    this.DataAlteracao,
    this.UrlImagem,
    this.id,
  });



  BannerApp copyWith({
    String Descricao,
    bool Ativo,
    String Noticia,
    String UrlLink,
    String DataAlteracao,
    String UrlImagem,
    String id,
  }) {
    return BannerApp(
      Descricao: Descricao ?? this.Descricao,
      Ativo: Ativo ?? this.Ativo,
      Noticia: Noticia ?? this.Noticia,
      UrlLink: UrlLink ?? this.UrlLink,
      DataAlteracao: DataAlteracao ?? this.DataAlteracao,
      UrlImagem: UrlImagem ?? this.UrlImagem,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'Descricao': Descricao,
      'Ativo': Ativo,
      'Noticia': Noticia,
      'UrlLink': UrlLink,
      'DataAlteracao': DataAlteracao,
      'UrlImagem': UrlImagem,
      'id': id,
    };
  }

  static BannerApp fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return BannerApp(
      Descricao: map['Descricao'],
      Ativo: map['Ativo'],
      Noticia: map['Noticia'],
      UrlLink: map['UrlLink'],
      DataAlteracao: map['DataAlteracao'],
      UrlImagem: map['UrlImagem'],
      id: map['id'],
    );
  }

  String toJson() => json.encode(toMap());

  static BannerApp fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() {
    return 'BannerApp(Descricao: $Descricao, Ativo: $Ativo, Noticia: $Noticia, UrlLink: $UrlLink, DataAlteracao: $DataAlteracao, UrlImagem: $UrlImagem, id: $id)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is BannerApp &&
      o.Descricao == Descricao &&
      o.Ativo == Ativo &&
      o.Noticia == Noticia &&
      o.UrlLink == UrlLink &&
      o.DataAlteracao == DataAlteracao &&
      o.UrlImagem == UrlImagem &&
      o.id == id;
  }

  @override
  int get hashCode {
    return Descricao.hashCode ^
      Ativo.hashCode ^
      Noticia.hashCode ^
      UrlLink.hashCode ^
      DataAlteracao.hashCode ^
      UrlImagem.hashCode ^
      id.hashCode;
  }
}
