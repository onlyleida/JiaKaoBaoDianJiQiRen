package cn.mucang.android.jiakaoyi.exam.k3.helper;

import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes2.dex */
public class PoseEstimator {
    private static final float Factor = 300000.0f;
    private static final int N = 200;
    private static final int PN = 4;
    private static final int RN = 10;
    private static final float Threshold = 400.0f;
    private float lastDegree;
    private float lastRadius;
    private float lastSpeed;
    private long lastTime;
    private LinkedList<Pos> points = new LinkedList<>();
    private LinkedList<Float> distance = new LinkedList<>();
    private LinkedList<Float> radius = new LinkedList<>();
    private LinkedList<Float> d1Radius = new LinkedList<>();
    private LinkedList<MovePose> poses = new LinkedList<>();
    private MovePose currentPose = MovePose.Straight;

    public enum MovePose {
        TurnLeft("左转"),
        Straight("直行"),
        TurnRight("右转");

        public final String name;

        MovePose(String str) {
            this.name = str;
        }
    }

    private static class SimpleList<T> {
        Node<T> first;
        Node<T> last;
        int size = 0;

        static class Node<T> {
            T item;
            Node<T> next;
            Node<T> pre;

            public Node(Node<T> node, T t, Node<T> node2) {
                this.item = t;
                this.pre = node;
                this.next = node2;
            }
        }

        private SimpleList() {
        }

        void addFirst(T t) {
            Node<T> node = this.first;
            Node<T> node2 = new Node<>(null, t, node);
            this.first = node2;
            if (node == null) {
                this.last = node2;
            } else {
                node.pre = node2;
            }
            this.size++;
        }

        T removeLast() {
            Node<T> node = this.last;
            if (node == null) {
                return null;
            }
            T t = node.item;
            Node<T> node2 = node.pre;
            node.item = null;
            node.pre = null;
            this.last = node2;
            if (node2 == null) {
                this.first = null;
            } else {
                node2.next = null;
            }
            this.size--;
            return t;
        }
    }

    public static Pos getCircleCenter(Pos pos, Pos pos2, Pos pos3) {
        double d2 = pos2.x;
        double d3 = pos.x;
        double d4 = (d2 - d3) * 2.0d;
        double d5 = pos2.y;
        double d6 = pos.y;
        double d7 = (d5 - d6) * 2.0d;
        double d8 = (((d2 * d2) + (d5 * d5)) - (d3 * d3)) - (d6 * d6);
        double d9 = (pos3.x - d2) * 2.0d;
        double d10 = (pos3.y - d5) * 2.0d;
        double d11 = (d7 * d9) - (d10 * d4);
        if (d11 > -1.0E-10d && d11 < 1.0E-10d) {
            return null;
        }
        Pos pos4 = new Pos();
        double d12 = pos3.x;
        double d13 = pos3.y;
        double d14 = (d12 * d12) + (d13 * d13);
        double d15 = pos2.x;
        double d16 = pos2.y;
        double d17 = (d14 - (d15 * d15)) - (d16 * d16);
        pos4.x = ((d7 * d17) - (d10 * d8)) / d11;
        pos4.y = ((d9 * d8) - (d4 * d17)) / d11;
        return pos4;
    }

    public void put(float f2, float f3, long j) {
        Pos pos;
        int size = this.points.size();
        float f4 = BitmapDescriptorFactory.HUE_RED;
        Float fValueOf = Float.valueOf(BitmapDescriptorFactory.HUE_RED);
        if (size == 0) {
            this.points.addFirst(new Pos(0.0d, 0.0d, 0.0d));
            this.distance.addFirst(fValueOf);
        } else {
            float f5 = (float) (((((double) (this.lastSpeed + f3)) * 0.5d) / 3.6d) * (j - this.lastTime) * 0.001d * 100.0d);
            Pos first = this.points.getFirst();
            double radians = Math.toRadians(((double) (this.lastDegree + f2)) * 0.5d);
            Pos pos2 = new Pos();
            double d2 = f5;
            pos2.x = first.x + (Math.cos(radians) * d2);
            pos2.y = first.y + (d2 * Math.sin(radians));
            this.points.addFirst(pos2);
            this.distance.addFirst(Float.valueOf(f5));
            if (this.points.size() > 200) {
                this.points.removeLast();
                this.distance.removeLast();
            }
        }
        int i = 0;
        int i2 = 0;
        float fFloatValue = BitmapDescriptorFactory.HUE_RED;
        while (true) {
            if (i2 >= this.distance.size()) {
                i2 = -1;
                break;
            }
            fFloatValue += this.distance.get(i2).floatValue();
            if (fFloatValue >= Threshold && i2 >= 2) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 >= 0) {
            Pos pos3 = this.points.get(i2);
            Pos first2 = this.points.getFirst();
            if (i2 > 2) {
                int i3 = i2 / 2;
                double d3 = 0.0d;
                for (int i4 = i2 - 1; i4 > 0; i4--) {
                    double dK = cn.mucang.android.jiakaoyi.hpmap.d.a.k(this.points.get(i4), pos3, first2);
                    if (dK > d3) {
                        i3 = i4;
                        d3 = dK;
                    }
                }
                pos = this.points.get(i3);
            } else {
                pos = this.points.get(i2 / 2);
            }
            Pos circleCenter = getCircleCenter(pos3, pos, first2);
            if (circleCenter == null) {
                this.poses.addFirst(MovePose.Straight);
                this.radius.addFirst(Float.valueOf(Math.abs(this.lastRadius) > 50.0f ? this.lastRadius * 0.5f : BitmapDescriptorFactory.HUE_RED));
            } else {
                float fDistanceTo = (float) circleCenter.distanceTo(pos3);
                if (fDistanceTo > Factor) {
                    fDistanceTo = Factor;
                }
                float f6 = (Factor / fDistanceTo) - 1.0f;
                if (Math.abs(f6 - this.lastRadius) > 50.0f) {
                    f6 = (f6 + this.lastRadius) * 0.5f;
                }
                this.radius.addFirst(Float.valueOf(f6));
                if (f6 < 24.0f) {
                    this.poses.addFirst(MovePose.Straight);
                } else if (pos3.vectorTo(pos).cross(pos3.vectorTo(circleCenter)) < 0.0d) {
                    this.poses.addFirst(MovePose.TurnLeft);
                } else {
                    this.poses.addFirst(MovePose.TurnRight);
                }
                f4 = f6;
            }
        } else {
            this.radius.addFirst(fValueOf);
        }
        if (this.radius.size() > 10) {
            this.radius.removeLast();
        }
        if (this.poses.size() > 4) {
            this.poses.removeLast();
        }
        int i5 = 0;
        for (MovePose movePose : this.poses) {
            if (movePose != MovePose.Straight) {
                if (movePose == MovePose.TurnLeft) {
                    i++;
                } else if (movePose == MovePose.TurnRight) {
                    i5++;
                }
            }
        }
        if (i >= 3 && f4 >= 20.0f) {
            this.currentPose = MovePose.TurnLeft;
        } else if (i5 < 3 || f4 < 20.0f) {
            this.currentPose = MovePose.Straight;
        } else {
            this.currentPose = MovePose.TurnRight;
        }
        this.lastSpeed = f3;
        this.lastDegree = f2;
        this.lastTime = j;
        this.lastRadius = this.radius.getFirst().floatValue();
    }
}
