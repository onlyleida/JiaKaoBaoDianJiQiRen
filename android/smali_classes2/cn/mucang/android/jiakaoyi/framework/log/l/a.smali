.class public final synthetic Lcn/mucang/android/jiakaoyi/framework/log/l/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/framework/log/l/f;

.field public final synthetic b:[B

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:J

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/framework/log/l/f;[BLjava/lang/String;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/a;->a:Lcn/mucang/android/jiakaoyi/framework/log/l/f;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/a;->b:[B

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/a;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/a;->d:J

    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/a;->a:Lcn/mucang/android/jiakaoyi/framework/log/l/f;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/a;->b:[B

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/a;->c:Ljava/lang/String;

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/a;->d:J

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/a;->e:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/framework/log/l/f;->h([BLjava/lang/String;JLjava/lang/String;)V

    return-void
.end method
