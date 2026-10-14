.class public final synthetic Lcn/mucang/sundial/android/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/sundial/android/SundialManager;

.field public final synthetic b:Lcn/mucang/sundial/android/tcp/message/SendMessage;

.field public final synthetic c:Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/sundial/android/SundialManager;Lcn/mucang/sundial/android/tcp/message/SendMessage;Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/sundial/android/a;->a:Lcn/mucang/sundial/android/SundialManager;

    iput-object p2, p0, Lcn/mucang/sundial/android/a;->b:Lcn/mucang/sundial/android/tcp/message/SendMessage;

    iput-object p3, p0, Lcn/mucang/sundial/android/a;->c:Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/sundial/android/a;->a:Lcn/mucang/sundial/android/SundialManager;

    iget-object v1, p0, Lcn/mucang/sundial/android/a;->b:Lcn/mucang/sundial/android/tcp/message/SendMessage;

    iget-object v2, p0, Lcn/mucang/sundial/android/a;->c:Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;

    invoke-virtual {v0, v1, v2}, Lcn/mucang/sundial/android/SundialManager;->b(Lcn/mucang/sundial/android/tcp/message/SendMessage;Lcn/mucang/sundial/android/tcp/PacketResponseObserver$RequestResultListener;)V

    return-void
.end method
