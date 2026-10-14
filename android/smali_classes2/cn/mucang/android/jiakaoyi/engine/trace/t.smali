.class public final synthetic Lcn/mucang/android/jiakaoyi/engine/trace/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/t;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput p2, p0, Lcn/mucang/android/jiakaoyi/engine/trace/t;->b:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/t;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/t;->b:F

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;F)V

    return-void
.end method
