declare module '@apiverve/hardinesszone' {
  export interface hardinesszoneOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface hardinesszoneResponse {
    status: string;
    error: string | null;
    data: USDAHardinessZoneData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface USDAHardinessZoneData {
      zipCode:   null | string;
      zone:      null | string;
      tempRange: null | string;
      zoneTitle: null | string;
      details:   Details;
  }
  
  interface Details {
      tempRange:     null | string;
      description:   null | string;
      plantSurvival: null | string;
  }

  export default class hardinesszoneWrapper {
    constructor(options: hardinesszoneOptions);

    execute(callback: (error: any, data: hardinesszoneResponse | null) => void): Promise<hardinesszoneResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: hardinesszoneResponse | null) => void): Promise<hardinesszoneResponse>;
    execute(query?: Record<string, any>): Promise<hardinesszoneResponse>;
  }
}
