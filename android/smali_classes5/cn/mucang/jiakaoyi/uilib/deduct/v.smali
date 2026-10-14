.class public final synthetic Lcn/mucang/jiakaoyi/uilib/deduct/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/v;->a:J

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/deduct/v;->b:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    iput-boolean p4, p0, Lcn/mucang/jiakaoyi/uilib/deduct/v;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/v;->a:J

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/deduct/v;->b:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    iget-boolean v3, p0, Lcn/mucang/jiakaoyi/uilib/deduct/v;->c:Z

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/deduct/b0;->a(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;Z)V

    return-void
.end method
