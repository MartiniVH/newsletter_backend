import { Controller, Get } from '@nestjs/common';
import { ApiTags } from '@nestjs/swagger';
import { NewsArticleService } from 'src/services/newsarticles.service';

@ApiTags('newsarticles')
@Controller('/newsarticles')
export class NewsArticleController {
  constructor(private readonly newsArticleService: NewsArticleService) {}

  @Get()
  getHello() {
    return this.newsArticleService.getHello();
  }
}
