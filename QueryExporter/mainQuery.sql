select bs.EnTitle                   as bookState,
       brt.BookRequestType          as moduleType,
       count(br.BookRequestId)      as orderCount
from 
         rs.BookRequest as br with (nolock)
         join rs.BookState as bs with (nolock) on br.BookStateId = bs.BookStateId
         join rs.BookRequestType as brt with (nolock) on br.BookRequestTypeId = brt.BookRequestTypeId
         join rs.[Transaction] as t with(nolock) on br.BookRequestId = t.TransactionId
where
    br.PNR <> 'issue pnr'
    and t.CreateDate > dateadd(second ,-10000,getdate())
group by bs.EnTitle, brt.BookRequestType
