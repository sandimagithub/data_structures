require_relative '../node'
require_relative '../linked_list'

describe Node do
  describe "initialization" do
    before do
      @node = Node.new(2)
    end
    it "should have no next node" do
      expect(@node.next).to eq(nil)
    end
    it "should have the value with which it's initialized" do
      expect(@node.value).to eq(2)
    end
    it "should be initializable with no value" do
      expect(Node.new.value).to eq(nil)
    end
  end
end

describe LinkedList do
  describe "initialization" do
    before do
      @ll = LinkedList.new
    end
    it "should have a null head" do
      expect(@ll.head).to be_nil
    end
  end

  describe "operations" do
    describe :push do
      it "head should point to the node with the value" do
        ll = LinkedList.new
        ll.push 4
        expect(ll.head.value).to eq(4)
      end
      context "pushing on an existing node" do
        before do
          @ll = LinkedList.new
          @ll.push 10
          @ll.push 100
        end
        it "head.next should point to the node with the value" do
          expect(@ll.head.next.value).to eq(100)
        end
        it "should keep its previous head" do
          expect(@ll.head.value).to eq(10)
        end
        it "should be able to push more than two values" do
          @ll.push 1000
          expect(@ll.head.next.next.value).to eq(1000)
        end
      end
    end
    describe :pop do
      context "one node in list" do
        before do
          @ll = LinkedList.new
          @ll.push 4
        end
        it "should return the head when it's the only node" do
          expect(@ll.pop).to eq(4)
        end

        it "should set head to nil" do
          @ll.pop
          expect(@ll.head).to be_nil
        end
      end

      context "more than one node in list" do
        before do
          @ll = LinkedList.new
          @ll.push 100
          @ll.push 1000
          @ll.push 10
        end

        it "should return the last one" do
          expect(@ll.pop).to eq(10) 
        end

        it "the second to last node should point to nil" do
          @ll.pop
          expect(@ll.head.next.next).to be_nil
        end
      end
    end
    describe :insert_after do
      context "no nodes in list" do
        it "should insert the node at the head" do
          ll = LinkedList.new
          ll.insert_after 10, 20
          expect(ll.head.value).to be 20
        end
      end
      context "nodes in list" do
        before do
          @ll = LinkedList.new
          @ll.push 10
          @ll.push 20
          @ll.insert_after 10, 15
        end
        it "should insert the node after the first found value" do
          expect(@ll.head.next.value).to be 15
        end
        it "should ensure that the order is correct" do
          expect(@ll.head.next.next.value).to be 20
        end
      end
    end
    describe :insert_before do
      # write the test for it
      # and then write the functionality
    end
    describe :delete do
      # write the test for it
      # and then write the functionality
    end
    describe :shift do
      # look up how shift works for arrays (http://www.ruby-doc.org/core-2.1.5/Array.html#method-i-shift)
      # write the test for it
      # and then write the functionality
    end
    describe :unshift do
      # look up how unshift works for arrays (http://www.ruby-doc.org/core-2.1.5/Array.html#method-i-unshift)
      # write the test for it
      # and then write the functionality
    end
  end
end
