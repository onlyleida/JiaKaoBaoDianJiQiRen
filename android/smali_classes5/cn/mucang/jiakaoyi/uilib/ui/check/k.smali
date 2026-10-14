.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/check/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/k;->a:Ljava/util/List;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/k;->b:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/k;->a:Ljava/util/List;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/check/k;->b:Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity$b;->f(Ljava/util/List;Lcn/mucang/jiakaoyi/uilib/ui/check/SelfCheckActivity;)V

    return-void
.end method
