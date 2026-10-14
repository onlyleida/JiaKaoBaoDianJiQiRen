package cn.mucang.sundial.android.tcp.utils;

import android.app.Application;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.net.Uri;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import androidx.core.view.ViewCompat;
import androidx.exifinterface.media.ExifInterface;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.s0;
import cn.mucang.sundial.android.SundialManager;
import cn.mucang.sundial.android.db.entity.CoachInfo;
import cn.mucang.sundial.android.db.entity.DeviceInfo;
import cn.mucang.sundial.android.db.entity.StudentInfo;
import cn.mucang.sundial.android.location.AppLocation;
import cn.mucang.sundial.android.model.CarModel;
import cn.mucang.sundial.android.tcp.data.gnss.OBDManager;
import cn.mucang.sundial.android.tcp.upload.EventType;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import java.io.File;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;

/* JADX INFO: loaded from: classes5.dex */
public class BitmapUtil {
    public static final int TEXT_PADDING = s0.a(2.0f);

    public static Bitmap drawTextToBitmap(Bitmap bitmap, String str, int i, int i2) {
        Bitmap bitmap2;
        CoachInfo lastCoach;
        StudentInfo studentInfo;
        Bitmap bitmap3 = null;
        CoachInfo lastCoach2 = null;
        lastStudent = null;
        StudentInfo lastStudent = null;
        try {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
            try {
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                canvas.drawBitmap(bitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (Paint) null);
                TextPaint textPaint = new TextPaint();
                textPaint.setStyle(Paint.Style.FILL);
                textPaint.setStrokeWidth(12.0f);
                textPaint.setColor(-1);
                textPaint.setTextSize(i2);
                textPaint.setShadowLayer(25.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, ViewCompat.MEASURED_STATE_MASK);
                Paint.FontMetrics fontMetrics = textPaint.getFontMetrics();
                float fCeil = (float) (Math.ceil(fontMetrics.descent - fontMetrics.ascent) - ((double) (fontMetrics.descent / 2.0f)));
                if (str != null) {
                    try {
                        if (i == EventType.COACH_SIGN_IN.valueOf()) {
                            lastCoach = SundialManager.getInstance().getCoachInfo(str);
                        } else if (i == EventType.STUDENT_SIGN_IN.valueOf()) {
                            lastCoach2 = SundialManager.getInstance().getLastCoach();
                            studentInfo = SundialManager.getInstance().getStudentInfo(str);
                        } else {
                            lastCoach = SundialManager.getInstance().coachLoginSuccess() ? SundialManager.getInstance().getLastCoach() : null;
                            if (SundialManager.getInstance().studentLoginSuccess()) {
                                lastStudent = SundialManager.getInstance().getLastStudent();
                            }
                        }
                        StudentInfo studentInfo2 = lastStudent;
                        lastCoach2 = lastCoach;
                        studentInfo = studentInfo2;
                    } catch (Exception unused) {
                        bitmap3 = bitmapCreateBitmap;
                        return bitmap3;
                    }
                } else {
                    studentInfo = null;
                }
                DeviceInfo deviceInfo = SundialManager.getInstance().getDeviceInfo();
                StringBuilder sb = new StringBuilder();
                if (lastCoach2 != null) {
                    sb.append("驾校名称:");
                    sb.append(lastCoach2.getSchoolName());
                    sb.append("\n教练员:");
                    sb.append(lastCoach2.getCoachName());
                    sb.append(" ");
                    sb.append(lastCoach2.getCoachNo());
                    sb.append("\n");
                }
                if (studentInfo != null) {
                    sb.append("学员:");
                    sb.append(studentInfo.getStudentName());
                    sb.append(" ");
                    sb.append(studentInfo.getStudentNo());
                }
                if (sb.length() > 0) {
                    bitmap2 = bitmapCreateBitmap;
                    try {
                        new StaticLayout(sb, textPaint, bitmapCreateBitmap.getWidth(), Layout.Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, false).draw(canvas);
                    } catch (Exception unused2) {
                        bitmap3 = bitmap2;
                        return bitmap3;
                    }
                } else {
                    bitmap2 = bitmapCreateBitmap;
                }
                CarModel carModel = OBDManager.getCarModel();
                StringBuilder sb2 = new StringBuilder("车速:");
                if (carModel != null) {
                    sb2.append(formatDigits(Double.valueOf(carModel.speed), "0.##"));
                    sb2.append("km/h");
                } else {
                    sb2.append("0km/h");
                }
                String string = sb2.toString();
                float height = bitmap.getHeight() - fCeil;
                int i3 = TEXT_PADDING;
                canvas.drawText(string, BitmapDescriptorFactory.HUE_RED, (height - i3) - fontMetrics.descent, textPaint);
                if (deviceInfo != null) {
                    canvas.drawText(deviceInfo.getCarNo(), BitmapDescriptorFactory.HUE_RED, bitmap.getHeight() - fontMetrics.descent, textPaint);
                }
                StringBuilder sb3 = new StringBuilder();
                sb3.append(formatDigits(Double.valueOf(AppLocation.latitude), "0.###"));
                sb3.append("N");
                sb3.append(" ");
                sb3.append(formatDigits(Double.valueOf(AppLocation.longitude), "0.###"));
                sb3.append(ExifInterface.LONGITUDE_EAST);
                canvas.drawText(sb3.toString(), bitmap.getWidth() - textPaint.measureText(sb3.toString()), ((bitmap.getHeight() - fCeil) - i3) - fontMetrics.descent, textPaint);
                String time = formatTime(Long.valueOf(System.currentTimeMillis()));
                canvas.drawText(time, bitmap.getWidth() - textPaint.measureText(time), bitmap.getHeight() - fontMetrics.descent, textPaint);
                return bitmap2;
            } catch (Exception unused3) {
                bitmap2 = bitmapCreateBitmap;
            }
        } catch (Exception unused4) {
        }
    }

    private static String formatDigits(Double d2, String str) {
        DecimalFormat decimalFormat = new DecimalFormat(str);
        decimalFormat.setRoundingMode(RoundingMode.HALF_UP);
        return decimalFormat.format(d2);
    }

    private static String formatTime(Long l) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(l);
    }

    public static Bitmap getBitmap(String str) {
        try {
            Application context = MucangConfig.getContext();
            return (str.startsWith("http") ? Glide.with(context).asBitmap().load(str).submit() : Glide.with(context).asBitmap().load(Uri.fromFile(new File(str))).skipMemoryCache(true).diskCacheStrategy(DiskCacheStrategy.NONE).submit()).get();
        } catch (Exception unused) {
            return null;
        }
    }
}
