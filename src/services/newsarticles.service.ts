import { Injectable } from '@nestjs/common';

@Injectable()
export class NewsArticleService {
  getHello() {
    const data = [
      {
        id: 0,
        title: 'test',
        aticle_image: 'imagesrc',
        intro_text: 'lorem',
        author_id: 0,
        article_text: 'test',
      },
    ];

    return data;
  }
}
