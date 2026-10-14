.class public final synthetic Lcn/mucang/sundial/android/tcp/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/sundial/android/tcp/SocketClient;

.field public final synthetic b:Lcn/mucang/sundial/android/tcp/message/RawMessage;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/sundial/android/tcp/SocketClient;Lcn/mucang/sundial/android/tcp/message/RawMessage;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/c;->a:Lcn/mucang/sundial/android/tcp/SocketClient;

    iput-object p2, p0, Lcn/mucang/sundial/android/tcp/c;->b:Lcn/mucang/sundial/android/tcp/message/RawMessage;

    iput-wide p3, p0, Lcn/mucang/sundial/android/tcp/c;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/c;->a:Lcn/mucang/sundial/android/tcp/SocketClient;

    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/c;->b:Lcn/mucang/sundial/android/tcp/message/RawMessage;

    iget-wide v2, p0, Lcn/mucang/sundial/android/tcp/c;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/sundial/android/tcp/SocketClient;->b(Lcn/mucang/sundial/android/tcp/message/RawMessage;J)V

    return-void
.end method
