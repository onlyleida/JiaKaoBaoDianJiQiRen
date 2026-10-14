.class public final synthetic Lcn/mucang/android/jiakaoyi/signal/d/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/d$a;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/signal/d/g;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/signal/d/g;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/d/d;->a:Lcn/mucang/android/jiakaoyi/signal/d/g;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/d/d;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;

    return-void
.end method


# virtual methods
.method public final a(Lcn/mucang/android/jiakaoyi/signal/center/model/d;)Z
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/d/d;->a:Lcn/mucang/android/jiakaoyi/signal/d/g;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/d/d;->b:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;

    invoke-virtual {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/signal/d/g;->m(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;Lcn/mucang/android/jiakaoyi/signal/center/model/d;)Z

    move-result p1

    return p1
.end method
