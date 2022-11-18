/* tslint:disable:no-unused-variable */

import { TestBed, async, inject } from '@angular/core/testing';
import { CategoryManagerService } from './category-manager.service';

describe('Service: CategoryManager', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [CategoryManagerService]
    });
  });

  it('should ...', inject([CategoryManagerService], (service: CategoryManagerService) => {
    expect(service).toBeTruthy();
  }));
});
