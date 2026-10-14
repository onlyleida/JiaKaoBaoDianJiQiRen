.class public final synthetic Lcn/mucang/android/jiakaoyi/engine/trace/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

.field public final synthetic b:I

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/f;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iput p2, p0, Lcn/mucang/android/jiakaoyi/engine/trace/f;->b:I

    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/engine/trace/f;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/f;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/f;->b:I

    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/engine/trace/f;->c:Z

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->C(Lcn/mucang/android/jiakaoyi/engine/model/Step;IZ)V

    return-void
.end method
