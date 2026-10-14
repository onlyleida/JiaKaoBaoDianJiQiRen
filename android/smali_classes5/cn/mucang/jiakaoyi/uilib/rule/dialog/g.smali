.class public final synthetic Lcn/mucang/jiakaoyi/uilib/rule/dialog/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/g;->a:Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/g;->b:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/g;->a:Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/g;->b:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-static {v0, v1, p1}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;->r(Lcn/mucang/jiakaoyi/uilib/rule/dialog/o;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Landroid/view/View;)V

    return-void
.end method
