# encoding: utf-8
module Mongoid #:nodoc:
  module Fields #:nodoc:
    module Serializable #:nodoc:

      # Defines the behaviour for nil fields.
      class FalseClass
        include Serializable

        # Deserialize this field from the type stored in MongoDB to the type
        # defined on the model
        #
        # @example Deserialize the field.
        #   field.deserialize(object)
        #
        # @param [ Object ] object The object to cast.
        #
        # @return [ nil ] Always false.
        #
        # @since 2.2.6
        def deserialize(object); false; end

        # Serialize the object from the type defined in the model to a MongoDB
        # compatible object to store.
        #
        # @example Serialize the field.
        #   field.serialize(object)
        #
        # @param [ Object ] object The object to cast.
        #
        # @return [ nil ] always false.
        #
        # @since 2.2.6
        def serialize(object); false; end
      end
    end
  end
end


