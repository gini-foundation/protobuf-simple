-- Generated by protobuf-simple. DO NOT EDIT!
module Types.Int32Msg where

import Control.Applicative ((<$>))
import Prelude ()
import qualified Data.ProtoBufInt as PB

newtype Int32Msg = Int32Msg
  { value :: PB.Int32
  } deriving (PB.Show, PB.Eq, PB.Ord)

instance PB.Default Int32Msg where
  defaultVal = Int32Msg
    { value = PB.defaultVal
    }

instance PB.Mergeable Int32Msg where
  merge a b = Int32Msg
    { value = PB.merge (value a) (value b)
    }

instance PB.Required Int32Msg where
  reqTags _ = PB.fromList [PB.WireTag 1 PB.VarInt]

instance PB.WireMessage Int32Msg where
  fieldToValue (PB.WireTag 1 PB.VarInt) self = (\v -> self{value = PB.merge (value self) v}) <$> PB.getInt32
  fieldToValue tag self = PB.getUnknown tag self

  messageToFields self = do
    PB.putInt32 (PB.WireTag 1 PB.VarInt) (value self)


