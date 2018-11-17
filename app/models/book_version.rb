class BookVersion < PaperTrail::Version
  self.table_name = :book_versions # 追加されるテーブル名
  #self.sequence_name = :post_versions_id_seq # postgressでなければいらない
end