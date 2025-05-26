#!/usr/bin/env ruby

class Prime
        def self.prime(number)
          return false if number <= 1
      
          (2..Math.sqrt(number)).each do |i|
            return false if number % i == 0
          end
      
          true
        end
      end
      
      def prime(number)
        Prime.prime(number)
      end