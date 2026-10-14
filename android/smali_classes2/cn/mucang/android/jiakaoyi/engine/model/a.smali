.class public Lcn/mucang/android/jiakaoyi/engine/model/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

.field public b:J

.field public c:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

.field public final d:Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/model/Deduct;J)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 1
    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/engine/model/a;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Deduct;JZLcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;)V

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/model/Deduct;JZ)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    .line 2
    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/engine/model/a;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Deduct;JZLcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;)V

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/model/Deduct;JZLcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    .line 5
    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/engine/model/a;->b:J

    .line 6
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/engine/model/a;->c:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    .line 7
    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/engine/model/a;->d:Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;

    return-void
.end method
