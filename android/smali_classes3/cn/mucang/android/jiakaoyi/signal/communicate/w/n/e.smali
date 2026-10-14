.class public final synthetic Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/e;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/e;->a:Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/n/j;->p(Ljava/lang/String;)V

    return-void
.end method
