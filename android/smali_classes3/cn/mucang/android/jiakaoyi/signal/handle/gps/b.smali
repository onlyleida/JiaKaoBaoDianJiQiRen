.class public final synthetic Lcn/mucang/android/jiakaoyi/signal/handle/gps/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/c;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/signal/center/model/b;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/signal/handle/gps/c;Lcn/mucang/android/jiakaoyi/signal/center/model/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/b;->a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/c;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/b;->b:Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/b;->a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/c;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/b;->b:Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->g(Lcn/mucang/android/jiakaoyi/signal/handle/gps/c;Lcn/mucang/android/jiakaoyi/signal/center/model/b;)V

    return-void
.end method
