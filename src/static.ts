/*
 * Copyright (C) 2023 Katsute <https://github.com/Katsute>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program; if not, write to the Free Software Foundation, Inc.,
 * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 */

import * as AdmZip from "adm-zip";

import { PathOrFileDescriptor } from "fs";

export enum DatasetType {
    /**
     * New York City Transit Subway
     */
    Subway,
    /**
     * New York City Transit Bus / Bronx
     */
    Bus_Bronx,
    /**
     * New York City Transit Bus / Brooklyn
     */
    Bus_Brooklyn,
    /**
     * New York City Transit Bus / Manhattan
     */
    Bus_Manhattan,
    /**
     * New York City Transit Bus / Queens
     */
    Bus_Queens,
    /**
     * New York City Transit Bus / Staten Island
     */
    Bus_StatenIsland,
    /**
     * Bus Company
     */
    Bus_Company,
    /**
     * Long Island Rail Road
     */
    LongIslandRailroad,
    /**
     * Metro-North Railroad
     */
    MetroNorthRailroad
}

export class StaticDataset {

    private readonly type: DatasetType;
    private readonly data: any;

    constructor(path: string | Buffer | undefined, type: DatasetType){
        this.type = type;

        const zip: AdmZip = new AdmZip(path);

        for(const entry of zip.getEntries()){

        }

    }

}