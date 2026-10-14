.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/login/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceCoverModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceCoverModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/a;->a:Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceCoverModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/a;->a:Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceCoverModel;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/AiFaceCoverManager;->k(Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceCoverModel;)V

    return-void
.end method
