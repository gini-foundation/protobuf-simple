-- Generated by protobuf-simple. DO NOT EDIT!
module Types.SInt64OptMsg where

import Control.Applicative ((<$>))
import Prelude ()
import qualified Data.ProtoBufInt as PB

newtype SInt64OptMsg = SInt64OptMsg
  { value :: PB.Maybe PB.Int64
  } deriving (PB.Show, PB.Eq, PB.Ord)

instance PB.Default SInt64OptMsg where
  defaultVal = SInt64OptMsg
    { value = PB.defaultVal
    }

instance PB.Mergeable SInt64OptMsg where
  merge a b = SInt64OptMsg
    { value = PB.merge (value a) (value b)
    }

instance PB.Required SInt64OptMsg where
  reqTags _ = PB.fromList []

instance PB.WireMessage SInt64OptMsg where
  fieldToValue (PB.WireTag 1 PB.VarInt) self = (\v -> self{value = PB.merge (value self) v}) <$> PB.getSInt64Opt
  fieldToValue tag self = PB.getUnknown tag self

  messageToFields self = do
    PB.putSInt64Opt (PB.WireTag 1 PB.VarInt) (value self)


