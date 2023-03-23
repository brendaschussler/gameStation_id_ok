import { Component } from '@angular/core';
import { Games } from 'src/app/model/games.model';

@Component({
  selector: 'app-library',
  templateUrl: './library.component.html',
  styleUrls: ['./library.component.css']
})
export class LibraryComponent {

  name_obj: string = "library";
  showGameDetails = false;

  showDetails(idJogo: number) {
    this.showGameDetails = true;
    this.name_obj = "library"
  }

  GamesLibrary: Games[] = [
    {
      "id": 1,
      "link_imagens": "link imagem do jogo 1",
      "nome": "nome jogo 1",
      "preco": 100.00,
      "avaliacao": 9,
      "tags": ["action", "adventure", "multiplayer"]
    },
    {
      "id": 2,
      "link_imagens": "link imagem do jogo 2",
      "nome": "nome jogo 2",
      "preco": 90.90,
      "avaliacao": 9,
      "tags": ["action", "adventure", "multiplayer"]
    },
    {
      "id": 3,
      "link_imagens": "link imagem do jogo 3",
      "nome": "nome jogo 3",
      "preco": 50.00,
      "avaliacao": 8,
      "tags": ["puzzle"]
    },
  ];

  //para filtragem nos generos selecionados
  selectedGenres: string[] = [];
  filteredGames: any[] = this.GamesLibrary;

  filterGames() {
    this.selectedGenres = this.selectedGenres.map(genre => genre.toLowerCase());
    const gamesStoreCopy = [...this.GamesLibrary];

    gamesStoreCopy.forEach(game => {
      game.tags = game.tags.map(tag => tag.toLowerCase());
    });

    console.log('Selected genres:', this.selectedGenres);

    if (this.selectedGenres.length === 0) {
      this.filteredGames = gamesStoreCopy;
      return;
    }

    this.filteredGames = gamesStoreCopy.filter(game => {
      return this.selectedGenres.every(genre => game.tags.includes(genre));
    });

    console.log('Filtered games:', this.filteredGames);

    // Verifica se há algum gênero selecionado que não é válido na lista "GamesStore"
    const invalidGenres = this.selectedGenres.filter(genre => {
      return !gamesStoreCopy.some(game => game.tags.includes(genre));
    });

    if (invalidGenres.length > 0) {
      console.warn('Invalid genres:', invalidGenres);
    }
  }

  toggleGenre(genre: string) {
    if (this.selectedGenres.includes(genre)) {
      this.selectedGenres = this.selectedGenres.filter(g => g !== genre);
    } else {
      this.selectedGenres.push(genre);
    }
    this.filterGames();
  }

  //para filtragem de escrita na search 
  search(e: Event): void {
    const target = e.target as HTMLInputElement
    const value = target.value

    this.filteredGames = this.GamesLibrary.filter((games) => { return games.nome.toLowerCase().includes(value); })
  }

  constructor() { }

}
