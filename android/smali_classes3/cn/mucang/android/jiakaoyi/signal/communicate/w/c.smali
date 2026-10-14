.class public final synthetic Lcn/mucang/android/jiakaoyi/signal/communicate/w/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

.field public final synthetic b:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/c;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/c;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/c;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/c;->b:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->v(Ljava/lang/Throwable;)V

    return-void
.end method
