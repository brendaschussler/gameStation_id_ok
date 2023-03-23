import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { StoreComponent } from './components/store/store.component';
import { LibraryComponent } from './components/library/library.component';
import { AccountComponent } from './components/account/account.component';
import { LoginComponent } from './components/login/login.component';
import { OffersComponent } from './components/offers/offers.component';
import { ExchangeComponent } from './components/exchange/exchange.component';
import { GamesComponent } from './components/games/games.component';
import { GameDetailsComponent } from './components/game-details/game-details.component';

const routes: Routes = [
  { path: 'login', component: LoginComponent },
  { path: 'store', component: StoreComponent },
  { path: 'library', component: LibraryComponent },
  { path: 'library/:id', component: GameDetailsComponent },
  { path: 'offers', component: OffersComponent },
  { path: 'exchange', component: ExchangeComponent },
  { path: 'account', component: AccountComponent },
  { path: 'games', component: GamesComponent },
  { path: 'game-details/:id', component: GameDetailsComponent },
  { path: '', redirectTo: 'store', pathMatch: 'full' },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }