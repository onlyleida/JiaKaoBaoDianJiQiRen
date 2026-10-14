.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/a0;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/UserCommonTitleBinding;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachbase/databinding/UserCommonTitleBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/b;->a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/UserCommonTitleBinding;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/b;->a:Lcn/mucang/android/jiakaoyi/teachbase/databinding/UserCommonTitleBinding;

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/AppTeachExtensionsKt;->f(Lcn/mucang/android/jiakaoyi/teachbase/databinding/UserCommonTitleBinding;Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/TimeTickSignal;)V

    return-void
.end method
