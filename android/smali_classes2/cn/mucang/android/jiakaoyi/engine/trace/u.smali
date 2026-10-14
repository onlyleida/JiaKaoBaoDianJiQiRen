.class public final synthetic Lcn/mucang/android/jiakaoyi/engine/trace/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/u;->a:Z

    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/engine/trace/u;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/u;->a:Z

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/u;->b:Z

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->J(ZZ)V

    return-void
.end method
