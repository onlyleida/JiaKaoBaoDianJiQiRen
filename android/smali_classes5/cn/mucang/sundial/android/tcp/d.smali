.class public final synthetic Lcn/mucang/sundial/android/tcp/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/sundial/android/tcp/SocketClient;

.field public final synthetic b:Lcn/mucang/sundial/android/tcp/message/SendMessage;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/sundial/android/tcp/SocketClient;Lcn/mucang/sundial/android/tcp/message/SendMessage;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/sundial/android/tcp/d;->a:Lcn/mucang/sundial/android/tcp/SocketClient;

    iput-object p2, p0, Lcn/mucang/sundial/android/tcp/d;->b:Lcn/mucang/sundial/android/tcp/message/SendMessage;

    iput-boolean p3, p0, Lcn/mucang/sundial/android/tcp/d;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/sundial/android/tcp/d;->a:Lcn/mucang/sundial/android/tcp/SocketClient;

    iget-object v1, p0, Lcn/mucang/sundial/android/tcp/d;->b:Lcn/mucang/sundial/android/tcp/message/SendMessage;

    iget-boolean v2, p0, Lcn/mucang/sundial/android/tcp/d;->c:Z

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/SocketClient;->e(Lcn/mucang/sundial/android/tcp/message/SendMessage;Z)V

    return-void
.end method
