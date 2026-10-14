.class public final synthetic Lcn/mucang/android/jiakaoyi/engine/trace/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/o;->a:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/o;->a:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->s(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)V

    return-void
.end method
