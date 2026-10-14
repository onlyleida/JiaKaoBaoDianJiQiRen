.class public final synthetic Lcn/mucang/android/jiakaoyi/framework/log/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:J

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/framework/log/i;


# direct methods
.method public synthetic constructor <init>(JJLcn/mucang/android/jiakaoyi/framework/log/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/framework/log/d;->a:J

    iput-wide p3, p0, Lcn/mucang/android/jiakaoyi/framework/log/d;->b:J

    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/framework/log/d;->c:Lcn/mucang/android/jiakaoyi/framework/log/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/framework/log/d;->a:J

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/framework/log/d;->b:J

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/framework/log/d;->c:Lcn/mucang/android/jiakaoyi/framework/log/i;

    invoke-static {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/framework/log/f;->l(JJLcn/mucang/android/jiakaoyi/framework/log/i;)V

    return-void
.end method
