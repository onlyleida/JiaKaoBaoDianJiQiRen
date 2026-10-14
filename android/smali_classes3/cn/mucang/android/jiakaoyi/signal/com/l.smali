.class public final synthetic Lcn/mucang/android/jiakaoyi/signal/com/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/framework/h/b;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/com/l;->a:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/com/l;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/com/l;->a:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/com/l;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/com/q;->b(Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/i;)V

    return-void
.end method
