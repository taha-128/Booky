class ApiKeys {
  static const String baseUrl = 'https://www.googleapis.com/books/v1/volumes/';

  //* Error Model Keys
  static const codeKey = 'code';
  static const errorKey = 'error';
  static const errorsKey = 'errors';
  static const messageKey = 'message';

  //* Book Model Keys
  static const id = 'id';
  static const info = 'volumeInfo';
  static const title = 'title';
  static const authors = 'authors';
  static const description = 'description';
  static const publishedDate = 'publishedDate';
  static const pageCount = 'pageCount';
  static const thumbnail = 'thumbnail';
  static const imageLinks = 'imageLinks';
  static const pdf = 'pdf';
  static const accessInfo = 'accessInfo';
  static const downloadLink = 'downloadLink';
}

class QueryParameters {
  static const title = 'q';
  static const filter = 'filter';
  static const maxResults = 'maxResults';
}
