.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/setting/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;

.field public final synthetic b:D

.field public final synthetic c:D

.field public final synthetic d:D

.field public final synthetic e:F


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;DDDF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/p0;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;

    iput-wide p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/p0;->b:D

    iput-wide p4, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/p0;->c:D

    iput-wide p6, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/p0;->d:D

    iput p8, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/p0;->e:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/p0;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;

    iget-wide v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/p0;->b:D

    iget-wide v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/p0;->c:D

    iget-wide v5, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/p0;->d:D

    iget v7, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/p0;->e:F

    invoke-virtual/range {v0 .. v7}, Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;->c(DDDF)V

    return-void
.end method
