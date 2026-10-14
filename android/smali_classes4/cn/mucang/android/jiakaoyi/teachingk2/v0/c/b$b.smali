.class Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final a:D

.field final b:D

.field final c:D

.field final d:D

.field final e:D

.field final f:D


# direct methods
.method private constructor <init>(DDDDD)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide v3, v0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b$b;->a:D

    .line 4
    iput-wide v5, v0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b$b;->b:D

    .line 5
    iput-wide v7, v0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b$b;->c:D

    .line 6
    iput-wide v9, v0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b$b;->d:D

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    mul-double v13, v1, v11

    .line 7
    iput-wide v13, v0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b$b;->f:D

    sub-double v15, v3, v9

    mul-double v15, v15, v11

    sub-double v11, v9, v7

    add-double/2addr v11, v15

    neg-double v11, v11

    .line 8
    iput-wide v11, v0, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b$b;->e:D

    .line 9
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "36\u7ebf\u5bbd\u5ea6:"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ",34\u7ebf\u957f\u5ea6:"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ",\u8f74\u8ddd:"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ",\u540e\u8f74\u5230\u8f66\u5c3e:"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ",\u8f66\u8eab\u957f\u5ea6:"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ",X="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ",Y="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(DDDDDLcn/mucang/android/jiakaoyi/teachingk2/v0/c/b$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Lcn/mucang/android/jiakaoyi/teachingk2/v0/c/b$b;-><init>(DDDDD)V

    return-void
.end method
