.class public interface abstract Lcn/mucang/sundial/android/tcp/message/handler/MessageHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcn/mucang/sundial/android/tcp/message/Message;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getMessageClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract handleMessage(Lcn/mucang/sundial/android/tcp/message/Message;)Lcn/mucang/sundial/android/tcp/message/SendMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcn/mucang/sundial/android/tcp/message/SendMessage;"
        }
    .end annotation
.end method
