.class public final synthetic Lcn/mucang/android/jiakaoyi/framework/log/l/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/framework/log/l/f;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:J

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/framework/log/l/f;Ljava/lang/Object;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/d;->a:Lcn/mucang/android/jiakaoyi/framework/log/l/f;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/d;->b:Ljava/lang/Object;

    iput-wide p3, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/d;->c:J

    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/d;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/d;->a:Lcn/mucang/android/jiakaoyi/framework/log/l/f;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/d;->b:Ljava/lang/Object;

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/d;->c:J

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/framework/log/l/f;->j(Ljava/lang/Object;JLjava/lang/String;)V

    return-void
.end method
