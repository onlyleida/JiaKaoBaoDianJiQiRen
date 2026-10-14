.class public Lcn/mucang/sundial/android/tcp/message/send/ParameterQueryResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/tcp/message/SendMessage;


# instance fields
.field private parameterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/sundial/android/tcp/message/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field private responseSerialNo:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode()[B
    .locals 6

    .line 1
    new-instance v0, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;

    invoke-direct {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;-><init>()V

    .line 2
    iget v1, p0, Lcn/mucang/sundial/android/tcp/message/send/ParameterQueryResponse;->responseSerialNo:I

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendWORD(I)V

    .line 3
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/send/ParameterQueryResponse;->parameterList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    .line 4
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/send/ParameterQueryResponse;->parameterList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    .line 5
    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/message/send/ParameterQueryResponse;->parameterList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/sundial/android/tcp/message/Parameter;

    .line 6
    invoke-virtual {v2}, Lcn/mucang/sundial/android/tcp/message/Parameter;->getValue()[B

    move-result-object v3

    .line 7
    invoke-virtual {v2}, Lcn/mucang/sundial/android/tcp/message/Parameter;->getParameterId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendDWORD(J)V

    .line 8
    array-length v2, v3

    invoke-virtual {v0, v2}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBYTE(I)V

    .line 9
    invoke-virtual {v0, v3}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->appendBytes([B)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/sundial/android/tcp/encoder/BytesEncoder;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    const/16 v0, 0x104

    return v0
.end method

.method public getParameterList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/sundial/android/tcp/message/Parameter;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/message/send/ParameterQueryResponse;->parameterList:Ljava/util/List;

    return-object v0
.end method

.method public getResponseSerialNo()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/sundial/android/tcp/message/send/ParameterQueryResponse;->responseSerialNo:I

    return v0
.end method

.method public setParameterList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/sundial/android/tcp/message/Parameter;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/message/send/ParameterQueryResponse;->parameterList:Ljava/util/List;

    return-void
.end method

.method public setResponseSerialNo(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/sundial/android/tcp/message/send/ParameterQueryResponse;->responseSerialNo:I

    return-void
.end method
