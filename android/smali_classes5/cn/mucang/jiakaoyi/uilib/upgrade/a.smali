.class public final synthetic Lcn/mucang/jiakaoyi/uilib/upgrade/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/i0;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/q/f;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/i0;Lcn/mucang/jiakaoyi/uilib/q/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/a;->a:Lkotlinx/coroutines/i0;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/a;->b:Lcn/mucang/jiakaoyi/uilib/q/f;

    return-void
.end method


# virtual methods
.method public final callback(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/a;->a:Lkotlinx/coroutines/i0;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/a;->b:Lcn/mucang/jiakaoyi/uilib/q/f;

    check-cast p1, Ljava/lang/Float;

    invoke-static {v0, v1, p1}, Lcn/mucang/jiakaoyi/uilib/upgrade/ExamSiteResUpdateHelper$checkUpdateVoicePack$1;->d(Lkotlinx/coroutines/i0;Lcn/mucang/jiakaoyi/uilib/q/f;Ljava/lang/Float;)V

    return-void
.end method
