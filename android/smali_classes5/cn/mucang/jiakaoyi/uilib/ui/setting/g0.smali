.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/setting/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/g0;->a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    return-void
.end method


# virtual methods
.method public final callback(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/g0;->a:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    check-cast p1, Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/K2SettingProvider;->b(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Landroid/content/Context;)V

    return-void
.end method
