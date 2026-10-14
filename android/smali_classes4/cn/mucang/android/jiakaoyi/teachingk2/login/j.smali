.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/login/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/j;->a:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/j;->a:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/login/UserSwitcher;->r(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V

    return-void
.end method
