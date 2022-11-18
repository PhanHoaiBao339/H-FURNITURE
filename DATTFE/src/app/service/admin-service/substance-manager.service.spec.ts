/* tslint:disable:no-unused-variable */

import { TestBed, async, inject } from '@angular/core/testing';
import { SubstanceManagerService } from './substance-manager.service';

describe('Service: SubstanceManager', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [SubstanceManagerService]
    });
  });

  it('should ...', inject([SubstanceManagerService], (service: SubstanceManagerService) => {
    expect(service).toBeTruthy();
  }));
});
