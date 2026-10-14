.class public final synthetic Lcn/mucang/android/jiakaoyi/engine/trace/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/engine/model/Step;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/trace/m;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/trace/m;->a:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->K(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    return-void
.end method
