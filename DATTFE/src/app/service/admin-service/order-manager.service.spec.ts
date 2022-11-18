/* tslint:disable:no-unused-variable */

import { TestBed, async, inject } from '@angular/core/testing';
import { OrderManagerService } from './order-manager.service';

describe('Service: OrderManager', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [OrderManagerService]
    });
  });

  it('should ...', inject([OrderManagerService], (service: OrderManagerService) => {
    expect(service).toBeTruthy();
  }));
});
