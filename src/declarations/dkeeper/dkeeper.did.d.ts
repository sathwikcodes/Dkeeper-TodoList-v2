import type { Principal } from '@dfinity/principal';
export interface Note { 'title' : string, 'content' : string }
export interface _SERVICE {
  'CreateNote' : (arg_0: string, arg_1: string) => Promise<undefined>,
  'ReadNotes' : () => Promise<Array<Note>>,
  'removeNote' : (arg_0: bigint) => Promise<undefined>,
}
